#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'weecomments_options'
wp option delete 'weecomments_langconf'
wp option delete 'weecomments_configuration'

