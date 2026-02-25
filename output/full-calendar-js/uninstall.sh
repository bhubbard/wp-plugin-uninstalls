#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fc_option_calendar'
wp option delete 'fc_option_feed1'
wp option delete 'fc_option_feed2'
wp option delete 'fc_option_feed3'
wp option delete 'fc2_option_calendar'
wp option delete 'fc2_option_feed1'
wp option delete 'fc2_option_feed2'
wp option delete 'fc2_option_feed3'
wp option delete 'defaultview1'
wp option delete 'defaultview2'

