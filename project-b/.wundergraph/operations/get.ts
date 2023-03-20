import { createOperation, z } from '../../generated/wundergraph.factory';

export default createOperation.query({
	handler: async () => {
		return {
			project: 'B',
		};
	},
});
