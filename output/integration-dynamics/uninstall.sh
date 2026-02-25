#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcrm_log_level'
wp option delete 'wordpresscrm_custom_post_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%messages'"
wp option delete 'wpcrm_binding_default'
wp option delete 'wpcrm_binding'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%attachments'"
wp option delete 'alexacrm_options'
wp option delete 'alexacrm_forms_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%forms'"
wp option delete 'alexacrm_oauth_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%oauth'"
wp option delete 'wordpresscrm_registration_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%registration'"
wp option delete 'alexacrm_role_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%roles'"
wp option delete 'wordpresscrm_search_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%search'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alexacrm_databinding_entity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alexacrm_databinding_entity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alexacrm_databinding_entity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alexacrm_databinding_entity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alexacrm_databinding_parametername'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alexacrm_databinding_parametername'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alexacrm_databinding_parametername'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alexacrm_databinding_parametername'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alexacrm_databinding_isdefaultview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alexacrm_databinding_isdefaultview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alexacrm_databinding_isdefaultview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alexacrm_databinding_isdefaultview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alexacrm_databinding_querystring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alexacrm_databinding_querystring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alexacrm_databinding_querystring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alexacrm_databinding_querystring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordpresscrm_databinding_entity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordpresscrm_databinding_entity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordpresscrm_databinding_entity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordpresscrm_databinding_entity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordpresscrm_databinding_parametername'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordpresscrm_databinding_parametername'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordpresscrm_databinding_parametername'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordpresscrm_databinding_parametername'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordpresscrm_databinding_isdefaultview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordpresscrm_databinding_isdefaultview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordpresscrm_databinding_isdefaultview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordpresscrm_databinding_isdefaultview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordpresscrm_databinding_querystring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordpresscrm_databinding_querystring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordpresscrm_databinding_querystring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordpresscrm_databinding_querystring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordpresscrm_databinding_empty_behavior'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordpresscrm_databinding_empty_behavior'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordpresscrm_databinding_empty_behavior'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordpresscrm_databinding_empty_behavior'"
