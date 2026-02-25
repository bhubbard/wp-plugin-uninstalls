#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'syslog_dest'
wp option delete 'syslog_channel'
wp option delete 'syslog_prefix'
wp option delete 'syslog_logmem'
wp option delete 'syslog_logtime'
wp option delete 'syslog_colour'
wp option delete 'syslog_escape_newlines'
wp option delete 'syslog_strict'
wp option delete 'syslog_noajax'
wp option delete 'syslog_nojscss'
wp option delete 'syslog_ignore_urls'

# Delete Transients
wp transient delete 'bang_syslog_tail'
wp transient delete 'bang_syslog_messages'

