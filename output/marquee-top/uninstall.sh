#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssmt_marquee_text'
wp option delete 'ssmt_marquee_speed'
wp option delete 'ssmt_marquee_url'
wp option delete 'ssmt_marquee_bg_color'
wp option delete 'ssmt_span_color'

