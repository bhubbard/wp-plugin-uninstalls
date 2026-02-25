#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cb_popup_sub_popup_show'
wp option delete 'cb_popup_sub_cookie_expired'
wp option delete 'cb_popup_sub_logo'
wp option delete 'cb_popup_sub_first_text'
wp option delete 'cb_popup_sub_second_text'
wp option delete 'cb_popup_sub_footer_text'
wp option delete 'cb_popup_sub_footer_link_text'
wp option delete 'cb_popup_sub_footer_link_url'
wp option delete 'cb_popup_sub_popup_width'
wp option delete 'cb_popup_sub_submit_button'
wp option delete 'cb_popup_sub_no_thanks'
wp option delete 'cb_popup_sub_form_action'

