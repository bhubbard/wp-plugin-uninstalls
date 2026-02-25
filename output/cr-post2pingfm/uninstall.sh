#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cl_post_pingfm_api_key'
wp option delete 'cl_post_pingfm_message_template_1'
wp option delete 'cl_post_pingfm_message_template_2'
wp option delete 'cl_post_pingfm_message_template_3'
wp option delete 'cl_post_pingfm_message_template_4'
wp option delete 'cl_post_pingfm_message_template_5'
wp option delete 'cl_post_pingfm_message_template_6'
wp option delete 'cl_post_pingfm_message_template_7'
wp option delete 'cl_post_pingfm_message_template_8'
wp option delete 'cl_post_pingfm_message_template_9'
wp option delete 'cl_post_pingfm_message_template_10'
wp option delete 'cr_ping_connection_method'
wp option delete 'cr_post_pingfm_template_mode'
wp option delete 'cl_post_pingfm_ping_mode'
wp option delete 'cl_post_pingfm_ping_mode_category'
wp option delete 'cl_post_pingfm_publish_mode'
wp option delete 'cl_post_pingfm_republish_template'
wp option delete 'cl_post_pingfm_ping_republish_template_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cr_post_2_pingfm_submit_post_submitted_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cl_post_pingfm_message_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_4'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_5'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cr_post_2_pingfm_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cr_post_2_pingfm_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cr_post_2_pingfm_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cr_post_2_pingfm_custom_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cr_post_2_pingfm_dont_ping_this_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cr_post_2_pingfm_dont_ping_this_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cr_post_2_pingfm_dont_ping_this_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cr_post_2_pingfm_dont_ping_this_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cr_post_2_pingfm_custom_message_send_on_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cr_post_2_pingfm_custom_message_send_on_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cr_post_2_pingfm_custom_message_send_on_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cr_post_2_pingfm_custom_message_send_on_update'"
