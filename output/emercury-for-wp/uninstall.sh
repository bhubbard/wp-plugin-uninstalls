#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emercury_form_add_subscriber_comment'
wp option delete 'emercury_form_select_list_subscriber_comment'
wp option delete 'emercury_form_add_subscriber_signup'
wp option delete 'emercury_form_select_list_subscriber_signup'
wp option delete 'emercury_form_email'
wp option delete 'emercury_forms_sec_id'

