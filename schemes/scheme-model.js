const Schemes = require('../data/dbConfig.js')

module.exports = {
	find,
	findById,
	findSteps,
	add,
	update,
	remove
	
}


function find(){//weird way to say "get all schemes"...I wanna use "getAll" or "Get"
	return Schemes('schemes');	
}


function findById(id){//find a single scheme
	return Schemes('schemes')
	.where({id})
	.first()	
}


function findSteps(id){//find steps for a single scheme
	return Schemes('steps')
	   .where('scheme_id', id)
    .orderBy('step_number');
}


function add(scheme){//add a scheme
	return Schemes('schemes')
	.insert(scheme)
	.then(idOfScheme=>{
		return findById(idOfScheme[0])
	})
}


function update(changes,id){//change a single scheme
		return Schemes('schemes')
		.where({id})
	.update(changes)
	.then(done=>{
		return findById(id)
	})
}



function remove(id){//delete a single scheme
	return Schemes('schemes')
	   .where({id})
    	.del()
}

