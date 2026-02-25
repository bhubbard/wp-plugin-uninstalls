#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aica_settings'
wp option delete 'aica_magic_prompts'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'aica_installed'
wp option delete 'aica_version'
wp option delete 'aica_activated'
wp option delete 'aica_onboarding_completed'
wp option delete 'aica_last_indexed'
wp option delete 'aica_system_prompts'
wp option delete 'aica_db_version'

# Delete Transients
wp transient delete 'aica_activation_redirect'
wp transient delete 'aica_indexing_progress'
wp transient delete 'aica_product_count'
wp transient delete 'aica_last_index_time'

# Clear Cron Jobs
wp cron event delete 'aica_reindex_products'
wp cron event delete 'aica_cleanup_old_data'
wp cron event delete 'aica_generate_embeddings'
wp cron event delete 'aica_optimize_database'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aica_conversions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aica_conversions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aica_conversions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aica_conversions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aica_conversion_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aica_conversion_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aica_conversion_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aica_conversion_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aica_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aica_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aica_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aica_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aica_onboarding_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aica_onboarding_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aica_onboarding_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aica_onboarding_complete'"
