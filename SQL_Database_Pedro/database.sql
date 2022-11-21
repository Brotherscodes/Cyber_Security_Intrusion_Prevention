-- Amount of transactions
CREATE TABLE flows (
    flow_id INT NOT NULL,
    source_ip INT NOT NULL,
	destination_port INT NOT NULL,
	destination_ip INT NOT NULL,
    PRIMARY KEY (flow_id)
);
-- Size of the transactions
CREATE TABLE packets (
    times TIMESTAMP NOT NULL,
    avg_packet_size INT NOT NULL,
	bwd_packet_length_std INT NOT NULL,
	flow_id INT NOT NULL,
    PRIMARY KEY (times),
FOREIGN KEY (flow_id) REFERENCES flows (flow_id)
);
-- Length of the transactions
CREATE TABLE time (
    flow_id INT NOT NULL,
    flow_iat_std INT NOT NULL,
	flow_duration INT NOT NULL,
	times TIMESTAMP NOT NULL,
    PRIMARY KEY (flow_duration),
FOREIGN KEY (flow_id) REFERENCES flows (flow_id)
);


