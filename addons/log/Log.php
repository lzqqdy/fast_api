<?php

namespace addons\log;

use app\common\library\Menu;
use think\Addons;

/**
 * 插件
 */
class Log extends Addons
{

    /**
     * 插件安装方法
     * @return bool
     */
    public function install()
    {
        $menu = [
            [
                'name'    => 'general/logs',
                'title'   => '日志管理',
                'ismenu'  => 1,
                'icon'    => 'fa fa-pied-piper-alt',
                'sublist' => [
                    ['name' => 'general/logs/index', 'title' => '查看'],
                    ['name' => 'general/logs/del', 'title' => '删除'],
                    ['name' => 'general/logs/detail', 'title' => '详情']
                ],
            ]
        ];
        Menu::create($menu, 2);
        return true;
    }

    /**
     * 插件卸载方法
     * @return bool
     */
    public function uninstall()
    {
        Menu::delete('general/logs');
        return true;
    }

    /**
     * 插件启用方法
     * @return bool
     */
    public function enable()
    {
        Menu::enable('general/logs');
        return true;
    }

    /**
     * 插件禁用方法
     * @return bool
     */
    public function disable()
    {
        Menu::disable('general/logs');
        return true;
    }
}
