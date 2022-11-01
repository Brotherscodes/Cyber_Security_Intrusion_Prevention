CREATE TABLE flows (
    flow_id INT NOT NULL,
    source_ip INT NOT NULL,
	destination_port INT NOT NULL,
	destination_ip INT NOT NULL,
    PRIMARY KEY (flow_id)
);

CREATE TABLE packets (
    times TIMESTAMP NOT NULL,
    avg_packet_size INT NOT NULL,
	bwd_packet_length_std INT NOT NULL,
	flow_id INT NOT NULL,
    PRIMARY KEY (times),
FOREIGN KEY (flow_id) REFERENCES flows (flow_id)
);

CREATE TABLE time (
    flow_id INT NOT NULL,
    flow_iat_std INT NOT NULL,
	flow_duration INT NOT NULL,
	times TIMESTAMP NOT NULL,
    PRIMARY KEY (flow_duration),
FOREIGN KEY (flow_id) REFERENCES flows (flow_id)
);

SELECT fl.flow_id,
	fl.source_ip,
    fl.destination_port,
	fl.destination_ip,
	pa.avg_packet_size,
	pa.bwd_packet_length_std
INTO flow_summary
FROM flows as fl
LEFT JOIN packets as pa
ON fl.flow_id = pa.flow_id;

SELECT fl.flow_id,
	fl.source_ip,
	fl.destination_ip,
	ti.flow_iat_std,
	ti.flow_duration,
	ti.times
INTO flow_time
FROM flows as fl
LEFT JOIN time as ti
ON fl.flow_id = ti.flow_id;


