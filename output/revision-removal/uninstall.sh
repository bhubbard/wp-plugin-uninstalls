#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revision_removal_no'
wp option delete 'revision_removal_getPosts'

