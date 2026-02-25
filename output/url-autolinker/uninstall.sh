#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'url_autolinker_data'
wp option delete 'ual_keep_data_on_uninstall'
wp option delete 'url_autolinker_limit'
wp option delete 'url_autolinker_total'
wp option delete 'url_autolinker_tag_controls'
wp option delete 'url_autolinker_skip_paragraphs'
wp option delete 'ual_hide_adminbar_indicator'
wp option delete 'ual_batch_size'
wp option delete 'ual_min_capability'
wp option delete 'ual_index_mode'
wp option delete 'ual_post_type_whitelist'
wp option delete 'ual_post_blacklist'
wp option delete 'ual_blacklist_child_pages'
wp option delete 'ual_link_as_often_as_possible'
wp option delete 'ual_case_sensitive'
wp option delete 'ual_max_links_per_paragraph'
wp option delete 'ual_skip_already_linked_targets'
wp option delete 'ual_excluded_tags'
wp option delete 'ual_link_template'
wp option delete 'ual_global_nofollow'
wp option delete 'ual_cache_enabled'
wp option delete 'ual_api_key'
wp option delete 'ual_pro_enabled'
wp option delete 'ual_tax_filter_enabled'
wp option delete 'ual_tax_filter_mode'
wp option delete 'ual_tax_filter_terms'

# Delete Transients
wp transient delete 'url_autolinker_rules'
wp transient delete 'ual_link_stats_cache_v1'
wp transient delete 'ual_anchor_stats_cache_v1'
wp transient delete 'ual_cache_cleared'
wp transient delete 'ual_import_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ual_disable_autolinker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ual_disable_autolinker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ual_disable_autolinker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ual_disable_autolinker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ual_aliases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ual_aliases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ual_aliases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ual_aliases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ual_newtab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ual_newtab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ual_newtab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ual_newtab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ual_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ual_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ual_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ual_nofollow'"
