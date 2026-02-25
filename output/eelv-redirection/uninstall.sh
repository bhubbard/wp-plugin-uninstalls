#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eelv_url_redirect'
wp option delete 'eelv_when_redirect'
wp option delete 'eelv_code_redirect'

