#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basksc_review_prompt_shown_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basksc_review_prompt_shown_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basksc_review_prompt_shown_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basksc_review_prompt_shown_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'basksc_review_prompt_handled_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'basksc_review_prompt_handled_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'basksc_review_prompt_handled_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'basksc_review_prompt_handled_at'"
