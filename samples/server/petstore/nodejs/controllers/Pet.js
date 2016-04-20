'use strict';

var url = require('url');


var Pet = require('./PetService');


module.exports.addPet = function addPet (req, res, next) {
  Pet.addPet(req.swagger.params, res, next);
};

module.exports.deletePet = function deletePet (req, res, next) {
  Pet.deletePet(req.swagger.params, res, next);
};

module.exports.findPetsByStatus = function findPetsByStatus (req, res, next) {
  Pet.findPetsByStatus(req.swagger.params, res, next);
};

module.exports.findPetsByTags = function findPetsByTags (req, res, next) {
  Pet.findPetsByTags(req.swagger.params, res, next);
};

module.exports.getPetById = function getPetById (req, res, next) {
  Pet.getPetById(req.swagger.params, res, next);
};

module.exports.updatePet = function updatePet (req, res, next) {
  Pet.updatePet(req.swagger.params, res, next);
<<<<<<< HEAD
=======
};

module.exports.updatePetWithForm = function updatePetWithForm (req, res, next) {
  Pet.updatePetWithForm(req.swagger.params, res, next);
>>>>>>> upstream/master
};

module.exports.updatePetWithForm = function updatePetWithForm (req, res, next) {
  Pet.updatePetWithForm(req.swagger.params, res, next);
};
