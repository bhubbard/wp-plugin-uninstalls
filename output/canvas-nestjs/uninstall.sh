#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cn_setting_ishome'
wp option delete 'cn_setting_isarchive'
wp option delete 'cn_setting_issingular'
wp option delete 'cn_setting_issearch'
wp option delete 'cn_setting_is404'
wp option delete 'cn_setting_color'
wp option delete 'cn_setting_opacity'
wp option delete 'cn_setting_count'
wp option delete 'cn_setting_zindex'

