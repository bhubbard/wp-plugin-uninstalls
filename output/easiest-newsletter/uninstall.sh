#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'newsletter_from_name'
wp option delete 'newsletter_from_email'
wp option delete 'newsletter_from_subject'
wp option delete 'newsletter'

