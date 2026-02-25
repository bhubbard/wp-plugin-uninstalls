#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comminform_namekey'
wp option delete 'comminform_emailkey'
wp option delete 'comminform_subject'
wp option delete 'comminform_message'

