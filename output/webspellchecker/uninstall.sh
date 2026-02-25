#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsc_proofreader_info'
wp option delete 'wsc'
wp option delete 'wsc_proofreader_version'
wp option delete 'wsc_proofreader'

