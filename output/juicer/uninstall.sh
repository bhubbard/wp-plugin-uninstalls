#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'juicer_feed_exists'
wp option delete 'juicer_review_permanently_dismissed'
wp option delete 'juicer_review_dismissed'

