#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FIFOXMLRSSFEED_FadeWait'
wp option delete 'FIFOXMLRSSFEED_rss_0'
wp option delete 'FIFOXMLRSSFEED_Title'
wp option delete 'FIFOXMLRSSFEED_rss_1'
wp option delete 'FIFOXMLRSSFEED_rss_2'
wp option delete 'FIFOXMLRSSFEED_rss_3'

