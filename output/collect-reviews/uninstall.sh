#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'collect_reviews_initial_version'
wp option delete 'collect_reviews_initial_activation_time'
wp option delete 'collect_reviews_version'

