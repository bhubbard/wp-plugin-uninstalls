#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpd_cb_banner_title'
wp option delete 'tpd_cb_banner_content'
wp option delete 'tpd_cb_accept_text'
wp option delete 'tpd_cb_accept_class'
wp option delete 'tpd_cb_essential_text'
wp option delete 'tpd_cb_essential_class'
wp option delete 'tpd_cb_bg_color'
wp option delete 'tpd_cb_accent_color'
wp option delete 'tpd_cb_text_color'
wp option delete 'tpd_cb_ga_enabled'
wp option delete 'tpd_cb_ga_id'

