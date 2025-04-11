function translate --argument text
    set encoded_text (string escape --style=url $text)
    set response (curl -s "https://translate.googleapis.com/translate_a/single?client=gtx&sl=ru&tl=en&dt=t&q=$encoded_text")
    echo $response | jq -r '.[0][0][0]' | string lower
end
