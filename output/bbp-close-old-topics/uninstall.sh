#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_iceable_bbp_close_old_topics'
wp option delete '_iceable_bbp_hard_close_old_topics'
wp option delete '_iceable_bbp_close_old_topics_age'

