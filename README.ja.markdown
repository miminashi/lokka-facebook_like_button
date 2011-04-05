Lokka Tweet Button
===============

<<<<<<< HEAD
これは、[いいね！ボタン](http://www.facebook-japan.com/iine.html)を作成する[Lokka](http://lokka.org)用のプラグインです。
lokka-tweet_buttonを元に作られています
=======
これは、[ツイートボタン](http://twitter.com/goodies/tweetbutton)を作成する[Lokka](http://lokka.org)用のプラグインです。
>>>>>>> upstream/master

インストール
------------

    $ cd public/plugin
<<<<<<< HEAD
    $ git clone git://github.com/miminashi/lokka-facebook_like_button.git
=======
    $ git clone git://github.com/nkmrshn/lokka-tweet_button.git
>>>>>>> upstream/master

使い方
------

<<<<<<< HEAD
ヘルパーメソッドとして、「facebook_like_button」があります。テーマのテンプレートを変更することをお忘れずにお願いします。facebook_like_buttonメソッドは、引数が与えられていない場合、表示しているページのURLをツイートします。URLを指定したい場合は、文字列引数としてメソッドに指定してください。

    <%= facebook_like_button("http://example.com/foo/bar/") %>

=======
管理画面の[プラグイン]->[Tweet Button]でオプションを設定することができます。

ヘルパーメソッドとして、「tweet_button」があります。テーマのテンプレートを変更することをお忘れずにお願いします。tweet_buttonメソッドは、引数が与えられていない場合、表示しているページのURLをツイートします。URLを指定したい場合は、文字列引数としてメソッドに指定してください。

    <%= tweet_button("http://example.com/foo/bar/") %>

注意点
--------

URLが"http://localhost"で始まり、ツイートボタンをクリックすると、Twitterは"URL required - 'url' parameter does not contain a valid URL."というメッセージを表示します。
>>>>>>> upstream/master
