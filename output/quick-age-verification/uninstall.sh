#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qav_logoimg'
wp option delete 'qav_question'
wp option delete 'qav_answer_yes'
wp option delete 'qav_answer_no'
wp option delete 'qav_not18'
wp option delete 'qav_remember'

