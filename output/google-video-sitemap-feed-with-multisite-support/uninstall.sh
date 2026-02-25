#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xml_video_sitemap'
wp option delete 'gn-sitemap-video-feed-mu-version'

# Delete Transients
wp transient delete 'xml_video_sitemap_consulta'
wp transient delete 'apg_video_sitemap_plugin'
wp transient delete 'xml_video_sitemap_procesado'
wp transient delete 'xml_video_sitemap'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'enviar_ping'

