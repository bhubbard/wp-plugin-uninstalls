#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hjqs_mentions_legales_options'
wp option delete 'hjqs_legal_notice'
wp option delete 'hjqs_privacy_policy'
wp option delete 'hjqs_terms_of_sales'
wp option delete 'hjqs_hjqs_legal_notice'
wp option delete 'hjqs_hjqs_privacy_policy'
wp option delete 'hjqs_hjqs_terms_of_sales'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hjqs_%'"

