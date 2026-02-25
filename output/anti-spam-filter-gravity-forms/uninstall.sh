#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'asfgf_subject_text'
wp option delete 'asfgf_form_id'
wp option delete 'asfgf_kill_spam'
wp option delete 'asfgf_enabled'
wp option delete 'asfgf_keywords_enabled'
wp option delete 'asfgf_keywords'
wp option delete 'asfgf_cyrillic'

