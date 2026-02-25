#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpimagelazyload_skipiframe'
wp option delete 'wpimagelazyload_skipparent'
wp option delete 'wpimagelazyload_skipvideo'
wp option delete 'wpimagelazyload_skipallparent'
wp option delete 'wpimagelazyload_loadonposition'
wp option delete 'wpimagelazyload_animation'
wp option delete 'wpimagelazyload_animationduration'
wp option delete 'wpimagelazyload_animationtiming'
wp option delete 'wpimagelazyload_phplazyload'
wp option delete 'wpimagelazyload_themefilesmofidied'

