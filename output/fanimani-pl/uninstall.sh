#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fanimaniUuid'
wp option delete 'fanimaniFaniSEOActive'
wp option delete 'fanimaniFaniSEOTitle'
wp option delete 'fanimaniFaniSEOColor'
wp option delete 'fanimaniFaniSEOBackground'
wp option delete 'fanimaniWidgetActive'
wp option delete 'fanimaniFaniSEOLinks'
wp option delete 'fanimaniFaniSEOUpdate'

# Clear Cron Jobs
wp cron event delete 'fanimaniFaniSEOUpdate'

