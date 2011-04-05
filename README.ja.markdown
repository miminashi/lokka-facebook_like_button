Lokka Tweet Button
===============

これは、[いいね！ボタン](http://www.facebook-japan.com/iine.html)を作成する[Lokka](http://lokka.org)用のプラグインです。
lokka-tweet_buttonを元に作られています

インストール
------------

    $ cd public/plugin
    $ git clone git://github.com/miminashi/lokka-facebook_like_button.git

使い方
------

ヘルパーメソッドとして、「facebook_like_button」があります。テーマのテンプレートを変更することをお忘れずにお願いします。facebook_like_buttonメソッドは、引数が与えられていない場合、表示しているページのURLをツイートします。URLを指定したい場合は、文字列引数としてメソッドに指定してください。

    <%= facebook_like_button("http://example.com/foo/bar/") %>

