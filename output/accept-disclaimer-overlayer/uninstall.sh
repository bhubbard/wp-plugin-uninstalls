#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mind_disclaimer_sidewide'
wp option delete 'mind_disclaimer_text'
wp option delete 'mind_disclaimer_title'
wp option delete 'mind_accept_text'
wp option delete 'mind_disclaimer_show_once'

