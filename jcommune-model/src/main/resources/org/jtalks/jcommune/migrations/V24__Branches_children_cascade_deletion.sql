ALTER TABLE TOPIC DROP FOREIGN KEY FK_BRANCH;
ALTER TABLE TOPIC ADD CONSTRAINT FK_BRANCH FOREIGN KEY (BRANCH_ID)
REFERENCES BRANCHES (BRANCH_ID) ON DELETE CASCADE;

ALTER TABLE POST DROP FOREIGN KEY FK_TOPIC;
ALTER TABLE POST ADD CONSTRAINT FK_TOPIC FOREIGN KEY (TOPIC_ID)
REFERENCES TOPIC (TOPIC_ID) ON DELETE CASCADE;

ALTER TABLE TOPIC_SUBSCRIPTIONS DROP FOREIGN KEY FK_TOPIC_SUB;
ALTER TABLE TOPIC_SUBSCRIPTIONS ADD CONSTRAINT FK_TOPIC_SUB FOREIGN KEY (TOPIC_ID)
REFERENCES TOPIC (TOPIC_ID) ON DELETE CASCADE;

ALTER TABLE POLLS DROP FOREIGN KEY SHARED_PK_POLL_TOPIC;
ALTER TABLE POLLS ADD CONSTRAINT SHARED_PK_POLL_TOPIC FOREIGN KEY (POLL_ID)
REFERENCES TOPIC (TOPIC_ID) ON DELETE CASCADE;

ALTER TABLE POLL_OPTIONS DROP FOREIGN KEY FK_POLL;
ALTER TABLE POLL_OPTIONS ADD CONSTRAINT FK_POLL FOREIGN KEY (POLL_ID)
REFERENCES POLLS (POLL_ID) ON DELETE CASCADE;