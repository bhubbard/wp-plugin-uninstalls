#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allow_kses_div'
wp option delete 'allow_kses_embed'
wp option delete 'allow_kses_iframe'
wp option delete 'allow_kses_img'
wp option delete 'allow_kses_map'
wp option delete 'allow_kses_object'
wp option delete 'allow_kses_param'
wp option delete 'allow_kses_pre'

