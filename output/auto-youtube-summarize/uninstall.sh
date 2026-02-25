#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ays_authkey'
wp option delete 'ays_keywords'
wp option delete 'ays_order'
wp option delete 'ays_publishedAfter'
wp option delete 'ays_maxResults'
wp option delete 'ays_commentName'
wp option delete 'ays_commentCount'
wp option delete 'ays_descriptionIndex'
wp option delete 'ays_postFirstContent'
wp option delete 'ays_postMovieDescription'
wp option delete 'ays_postTemplateText'
wp option delete 'ays_afterTemplateText'
wp option delete 'ays_postCommentCount'
wp option delete 'ays_commentTemplateText'
wp option delete 'ays_commentTemplateName'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%keywords'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%order'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%authkey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%publishedAfter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%maxResults'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%commentName'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%commentCount'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%postCommentCount'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%descriptionIndex'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%postFirstContent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%postMovieDescription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%postTemplateText'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%afterTemplateText'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%commentTemplateText'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%commentTemplateName'"
wp option delete 'ays_options'

# Clear Cron Jobs
wp cron event delete 'ays_cron'

