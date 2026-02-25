#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FENSE_BPVT_DEVOZON_cache_safe_mode'
wp option delete 'FENSE_BPVT_DEVOZON_licence_key'
wp option delete 'TOTAL_GUARD_DEVOZON_enable_cache'
wp option delete 'FENSE_BPVT_DEVOZON_protection_mode'
wp option delete 'FENSE_BPVT_DEVOZON_enable_stats'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_dtg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%licence_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_on_custom'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_on_logged_users'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_on_posts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_on_pages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_on_login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_cache'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_link_val'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%protection_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%restrict_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%redirect_to_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%block_vpn'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%block_proxy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%block_vps'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%crawlers_bots'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%crawlers_bots_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ip_whitelisting_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ip_blacklisting_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cache_safe_mode'"
wp option delete 'FENSE_BPVT_DEVOZON_tg_wp_version'
wp option delete 'FENSE_BPVT_DEVOZON_tg_wp_version_time'
wp option delete 'FENSE_BPVT_DEVOZON_ad_code'
wp option delete 'FENSE_BPVT_DEVOZON_api_data'
wp option delete 'FENSE_BPVT_DEVOZON_api_data_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_data_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_country'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_country'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%restrict_enable_country'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%restrict_disable_country'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%restrict_domain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ip_whitelisting'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ip_whitelisting_range'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ip_blacklisting'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ip_blacklisting_range'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plugin_version_updates'"

# Delete Transients
wp transient delete 'bpvt_is_api_key_valid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bpvt_ip_%' OR option_name LIKE '_site_transient_bpvt_ip_%'"
wp transient delete 'fense_bpvt_clean_up'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bpvt_sm_%' OR option_name LIKE '_site_transient_bpvt_sm_%'"
wp transient delete 'fense_bpvt_plugin_settings'
wp transient delete 'FENSE_BPVT_DEVOZON_is_daily_limit_reached'

