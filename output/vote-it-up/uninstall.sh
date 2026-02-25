#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voteiu_dbversion'
wp option delete 'voteiu_skin'
wp option delete 'voteiu_allowownvote'
wp option delete 'voteiu_aftervotetext'
wp option delete 'voteiu_votetext'
wp option delete 'voteiu_sinktext'
wp option delete 'voteiu_allowguests'
wp option delete 'voteiu_widgetcount'
wp option delete 'voteiu_initialoffset'
wp option delete 'voteiu_limit'
wp option delete 'voteiu_autoinsert'
wp option delete 'voteiu_allowsinks'
wp option delete 'voteiu_excluded'
wp option delete 'voteiu_usevotetext'
wp option delete 'widget_MostVotedAllTime'

