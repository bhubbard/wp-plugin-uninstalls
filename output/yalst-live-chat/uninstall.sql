-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tabIndex', 'yalstReiterIntegrationInput', 'yalstReiterWidgetIntegrationInput', 'yalstTabChatIntegrationInput', 'isAddedReiter', 'isAddedReiterWidget', 'isAddedTab');

