require 'telegram/bot'

TOKEN = 'YOUR TOKEN'
		
Telegram::Bot::Client.run(TOKEN) do |bot|
			bot.listen do |message|
 case message
 

 when Telegram::Bot::Types::Message
    kb = [
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Овен 21.03 — 20.04', callback_data: 'owen'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Телець 21.04 — 21.05', callback_data: 'telec'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Близнюки 22.05 — 21.06', callback_data: 'bluznuku'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Рак 22.06 — 23.07', callback_data: 'rak'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Лев 24.07 — 23.08', callback_data: 'lev'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Діва 24.08 — 23.09', callback_data: 'diva'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Терези 24.09 — 23.10', callback_data: 'terezu'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Скорпіон 24.10 — 22.11', callback_data: 'skorpion'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Стрілець 23.11 — 21.12', callback_data: 'strilec'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Козеріг 22.12 — 20.01', callback_data: 'kozerig'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Водолій 21.01 — 19.02', callback_data: 'vodoliy'),
      Telegram::Bot::Types::InlineKeyboardButton.new(text: 'Риби 20.02 — 20.03', callback_data: 'rubu')

    ]
   
    markup = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: kb)
    bot.api.send_message(chat_id: message.chat.id, text: "Привіт, #{message.from.first_name} Який твій знак зодіаку?", reply_markup: markup)
	end
end  
end