#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'txtimpact'
wp option delete 'txtimpact-received-messages-version'
wp option delete 'txtimpact-sent-messages-version'
wp option delete 'txtimpact-subscribers-version'
wp option delete 'widget_txtimpact-subscribe'

