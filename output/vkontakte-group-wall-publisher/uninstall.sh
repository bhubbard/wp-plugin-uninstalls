#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skylark_vk_application_id'
wp option delete 'skylark_vk_group_id'
wp option delete 'skylark_vk_autopost_on_publish'
wp option delete 'skylark_vk_use_excerpt_text'
wp option delete 'skylark_vk_use_excerpt_length'
wp option delete 'skylark_vk_admin_email'
wp option delete 'skylark_vk_admin_password'
wp option delete 'skylark_vk_use_bot'
wp option delete 'skylark_vk_phone_num'

