#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'juicer_social_feed_exists'
wp option delete 'juicer_social_feed_review_permanently_dismissed'
wp option delete 'juicer_social_feed_review_dismissed'

