#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conexteo_setting__options'
wp option delete 'example_plugin_options'
wp option delete 'conexteo_synccustomers_setting'
wp option delete 'conexteo_cronkey_setting'
wp option delete 'conexteo_contactlist_setting'
wp option delete 'conexteo_appid_setting'
wp option delete 'conexteo_keyid_setting'

