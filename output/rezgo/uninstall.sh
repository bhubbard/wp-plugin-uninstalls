#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rezgo_cid'
wp option delete 'rezgo_api_key'
wp option delete 'rezgo_captcha_pub_key'
wp option delete 'rezgo_captcha_priv_key'
wp option delete 'rezgo_google_key'
wp option delete 'rezgo_template'
wp option delete 'rezgo_custom_template_use'
wp option delete 'rezgo_legacy_template_use'
wp option delete 'rezgo_alt_doc_root'
wp option delete 'rezgo_result_num'
wp option delete 'rezgo_forward_secure'
wp option delete 'rezgo_secure_url'
wp option delete 'rezgo_debug'
wp option delete 'rewrite_rules'
wp option delete 'rezgo_optout_overwrite_page_title'
wp option delete 'rezgo_version'
wp option delete 'rezgo_all_secure'
wp option delete 'rezgo_override_doc_root'

