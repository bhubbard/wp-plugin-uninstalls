#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BusinessMonitor_options'
wp option delete 'BusinessMonitor_field_answerAnonymous'
wp option delete 'BusinessMonitor_field_anonymousText'

