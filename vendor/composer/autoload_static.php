<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit60d4c5869a8c5a86da8e7a6ccb83ccd1
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'Phpclient\\' => 10,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Phpclient\\' => 
        array (
            0 => __DIR__ . '/..' . '/heyloyalty/hl-phpclient/src/HL-phpclient',
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit60d4c5869a8c5a86da8e7a6ccb83ccd1::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit60d4c5869a8c5a86da8e7a6ccb83ccd1::$prefixDirsPsr4;

        }, null, ClassLoader::class);
    }
}
