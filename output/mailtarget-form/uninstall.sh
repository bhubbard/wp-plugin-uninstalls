#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mtg_api_token'
wp option delete 'mtg_company_id'
wp option delete 'mtg_popup_form_id'
wp option delete 'mtg_popup_delay'
wp option delete 'mtg_popup_enable'
wp option delete 'mtg_popup_form_name'
wp option delete 'mtg_popup_title'
wp option delete 'mtg_popup_description'
wp option delete 'mtg_popup_submit'
wp option delete 'mtg_popup_redirect'

