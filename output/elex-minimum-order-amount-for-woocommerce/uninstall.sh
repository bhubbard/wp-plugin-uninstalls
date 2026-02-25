#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elex_wccr_checkout_restriction_settings'
wp option delete 'elex_min_order_migrate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"

