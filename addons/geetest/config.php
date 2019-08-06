<?php

return array(
    array(
        'name'    => 'appid',
        'title'   => '极验应用ID',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => '48a6ebac4ebc6642d68c217fca33eb4d',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'appkey',
        'title'   => '极验应用KEY',
        'type'    => 'string',
        'content' =>
            array(),
        'value'   => '4f1c085290bec5afdc54df73535fc361',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
    array(
        'name'    => 'product',
        'title'   => '极验产品形式',
        'type'    => 'select',
        'content' =>
            array(
                'float' => '浮动式',
                'embed' => '嵌入式',
                'popup' => '弹出式'
            ),
        'value'   => 'embed',
        'rule'    => 'required',
        'msg'     => '',
        'tip'     => '',
        'ok'      => '',
        'extend'  => '',
    ),
);
