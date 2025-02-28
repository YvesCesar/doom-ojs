<?php

namespace APP\plugins\blocks\doom;

use PKP\plugins\BlockPlugin;

class DoomBlockPlugin extends BlockPlugin
{
    public function register($category, $path, $mainContextId = null): bool
    {
        $success = parent::register($category, $path);

        return $success;
    }

    public function getContents($templateMgr, $request = null)
    {
        return parent::getContents($templateMgr, $request);
    }

    public function getDisplayName(): string
    {
        return __('plugins.blocks.doom.displayName');
    }

    public function getDescription(): string
    {
        return __('plugins.blocks.doom.description');
    }
}

if (!PKP_STRICT_MODE) {
    class_alias('\APP\plugins\blocks\doom\DoomBlockPlugin', '\DoomBlockPlugin');
}
