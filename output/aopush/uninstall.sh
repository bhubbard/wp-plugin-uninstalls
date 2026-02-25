#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aoph_pushsender_email'
wp option delete 'aoph_pushsender_domain'
wp option delete 'aoph_pushsender_id'
wp option delete 'aoph_pushsender_post_used'
wp option delete 'aoph_pushsender_post_update'
wp option delete 'aoph_pushsender_post_insert'
wp option delete 'aoph_pushsender_template_insert_subject'
wp option delete 'aoph_pushsender_template_insert_icon'
wp option delete 'aoph_pushsender_template_update_subject'
wp option delete 'aoph_pushsender_template_update_icon'
wp option delete 'aoph_pushsender_token'
wp option delete 'aoph_pushsender_template_update_text'
wp option delete 'aoph_pushsender_template_insert_text'

