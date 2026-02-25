#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_facebook'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_googleplus'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedburner'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_kakinetwork'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_facebook_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_googleplus_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedburner_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_kakinetwork_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_facebook_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_googleplus_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedburner_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_kakinetwork_top'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_facebook_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_googleplus_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedburner_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_kakinetwork_auto_open'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter_show'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_noConflict'"
wp option delete 'kn_socialslide_version'
wp option delete 'kn_socialslide_facebook'
wp option delete 'kn_socialslide_twitter'
wp option delete 'kn_socialslide_googleplus'
wp option delete 'kn_socialslide_feedburner'
wp option delete 'kn_socialslide_kakinetwork'
wp option delete 'kn_socialslide_facebook_position'
wp option delete 'kn_socialslide_twitter_position'
wp option delete 'kn_socialslide_googleplus_position'
wp option delete 'kn_socialslide_feedburner_position'
wp option delete 'kn_socialslide_kakinetwork_position'
wp option delete 'kn_socialslide_facebook_top'
wp option delete 'kn_socialslide_twitter_top'
wp option delete 'kn_socialslide_googleplus_top'
wp option delete 'kn_socialslide_feedburner_top'
wp option delete 'kn_socialslide_kakinetwork_top'
wp option delete 'kn_socialslide_facebook_id'
wp option delete 'kn_socialslide_twitter_id'
wp option delete 'kn_socialslide_googleplus_id'
wp option delete 'kn_socialslide_feedburner_id'
wp option delete 'kn_socialslide_kakinetwork_auto_open'
wp option delete 'kn_socialslide_twitter_show'
wp option delete 'kn_socialslide_noConflict'

