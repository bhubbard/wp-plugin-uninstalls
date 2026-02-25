#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_adbuttons_cfg'
wp option delete 'ad_buttons_version'
wp option delete 'ad_buttons_db_version'

