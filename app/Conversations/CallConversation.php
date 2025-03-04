<?php

namespace App\Conversations;

use BotMan\BotMan\Messages\Conversations\Conversation;
use BotMan\BotMan\Messages\Incoming\Answer;
use BotMan\BotMan\Messages\Outgoing\Actions\Button;
use BotMan\BotMan\Messages\Outgoing\Question;

class CallConversation extends Conversation
{
    public function run()
    {
        $this->bot->reply("Hãy liên hệ với chúng tôi qua Hotline: 0943206425
         Hoặc qua Zalo: 0943206425 (ROLEX SHOP)
         Hoặc qua Facebook: <a href='https://www.facebook.com/profile.php?id=100004954485807'>ROLEX SHOP</a>");

        $this->bot->typesAndWaits(1);

        $question = Question::create("Bạn đang gặp vấn đề gì?")
            ->fallback('Lựa chọn không hợp lệ')
            ->callbackId('ask_about_option')
            ->addButtons([
                Button::create('Liên hệ hỗ trợ')->value('call'),
                Button::create('Chat với chúng tôi')->value('message'),
                Button::create('Đặt hàng')->value('order')
            ]);
        $this->bot->ask($question, function (Answer $answer){
            if($answer->isInteractiveMessageReply()){
                $value = $answer->getValue();
                switch ($value){
                    case 'call':
                        $this->bot->startConversation(new CallConversation);
                        break;
                    case 'message':
                        $this->bot->startConversation(new MessageConversation);
                        break;
                    case 'order':
                        $this->bot->startConversation(new orderConversation);
                        break;
                }
            }
        });
    }
}
