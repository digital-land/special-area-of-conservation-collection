SPECIAL_AREA_OF_CONSERVATION_DATASET=$(DATASET_DIR)special-area-of-conservation.csv
SPECIAL_AREA_OF_CONSERVATION_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)special-area-of-conservation/44dc1b91748495074397223966fee9572ce51e982e5ccc2ce1978ff92a3b7601.csv\
    $(TRANSFORMED_DIR)special-area-of-conservation/be978e08d9c4c0e071f6d70254387f6ddcccf70350ce24893af5149946aef77e.csv

$(TRANSFORMED_DIR)special-area-of-conservation/44dc1b91748495074397223966fee9572ce51e982e5ccc2ce1978ff92a3b7601.csv: collection/resource/44dc1b91748495074397223966fee9572ce51e982e5ccc2ce1978ff92a3b7601
	$(run-pipeline)

$(TRANSFORMED_DIR)special-area-of-conservation/be978e08d9c4c0e071f6d70254387f6ddcccf70350ce24893af5149946aef77e.csv: collection/resource/be978e08d9c4c0e071f6d70254387f6ddcccf70350ce24893af5149946aef77e
	$(run-pipeline)

$(SPECIAL_AREA_OF_CONSERVATION_DATASET): $(SPECIAL_AREA_OF_CONSERVATION_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(SPECIAL_AREA_OF_CONSERVATION_TRANSFORMED_FILES)

dataset:: $(SPECIAL_AREA_OF_CONSERVATION_DATASET)
